import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common/services/utils.dart';
import '../common/widgets/common.dart';
import '../common/widgets/form_fields.dart';
import '../support/app_theme.dart' as app_theme;
import '../common/services/data_transport.dart' as data_transport;
import 'package:animations/animations.dart';
import 'profile_details.dart';
import 'user_common.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({
    super.key,
    this.pageBaseUrl = 'find-matches-data',
    this.title,
  });

  final String pageBaseUrl;
  final String? title;
  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage>
    with
        TickerProviderStateMixin,
        // ChangeNotifier, // tabController.notifyListeners() used but do not enable ChangeNotifier it create failed to call dispose issues
        AutomaticKeepAliveClientMixin<UsersListPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int present = 0;
  int perPage = 0;
  String urlToCall = '';
  List items = [];
  int totalCount = 0;
  Map dataResponse = {};
  Map basicFilterData = {};
  Map specificationDataSettings = {};
  final Map<String, dynamic> filterInputData = {};
  Map<String, dynamic> tempFilterInputData = {};
  Map<String, num> specificationSelectedCount = {};
  Map genderList = {};
  bool isRequestProcessing = false;
  bool isInitialRequestProcessed = false;
  String? userRequestType;

  List<String> premiumOnly = [];

  @override
  void dispose() {
    if (mounted) {
      tempFilterInputData = {};
      specificationSelectedCount = {};
    }
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    genderList['all'] = context.lwTranslate.all;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        urlToCall = widget.pageBaseUrl;
      });
      applyFiltersAnLoadSearchResult();
    }
  }

  applyFiltersAnLoadSearchResult() {
    setState(() {
      items = [];
      totalCount = 0;
      isRequestProcessing = true;
    });
    data_transport
        .get(widget.pageBaseUrl, queryParameters: tempFilterInputData)
        .then((dataReceived) {
      setState(() {
        dataResponse = getItemValue(dataReceived, 'data');
        items = getItemValue(dataReceived, 'data.filterData') ??
            getItemValue(dataReceived, 'data.usersData') ??
            getItemValue(dataReceived, 'data.getFeatureUserList');
        totalCount = getItemValue(dataReceived, 'data.totalCount');
        basicFilterData =
            getItemValue(dataReceived, 'data.basicFilterData') ?? {};
        specificationDataSettings =
            getItemValue(dataReceived, 'data.userSpecifications.groups') ?? {};
        if (basicFilterData['genderList'] != null) {
          genderList.addAll(basicFilterData['genderList']);
        }
        isRequestProcessing = false;
        isInitialRequestProcessed = true;
        userRequestType = getItemValue(dataReceived, 'data.userRequestType');
      });
    });
  }

  void _updateTempFindFilterData(BuildContext context, itemIndex, value,
      {bool isSync = false}) {
    itemIndex = itemIndex.toString();
    value = value.toString();
    setState(() {
      if (isSync == false) {
        tempFilterInputData[itemIndex] = value;
      } else {
        if (!tempFilterInputData.containsKey(itemIndex)) {
          tempFilterInputData[itemIndex] = [];
        }
        tempFilterInputData[itemIndex].add(value);
      }
    });
  }

  void _loadMore() {
    if (urlToCall != dataResponse['nextPageUrl'] &&
        (items.length < totalCount)) {
      isRequestProcessing = true;
      urlToCall = dataResponse['nextPageUrl'];
      data_transport
          .get(urlToCall, queryParameters: tempFilterInputData)
          .then((dataReceived) {
        setState(() {
          dataResponse = getItemValue(dataReceived, 'data');
          List filterData = getItemValue(dataReceived, 'data.filterData') ??
              getItemValue(dataReceived, 'data.usersData');
          items.addAll(filterData);
          isRequestProcessing = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: (widget.title != null)
          ? mainAppBarWidget(
              context: context, title: widget.title, actionWidgets: [])
          : null,
      floatingActionButton: (widget.title == null)
          ? Visibility(
              visible: isInitialRequestProcessed,
              child: FloatingActionButton(
                  mini: true,
                  child: const Icon(Icons.filter_alt),
                  onPressed: () {
                    _showFilterBottomSheet(context);
                  }),
            )
          : null,
      body: ((getItemValue(dataResponse, 'userRequestType') ==
                  'who_liked_me') &&
              getItemValue(dataResponse, 'showWhoLikeMeUser') != true)
          ? const BePremiumAlertInfo()
          : NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (scrollInfo.metrics.pixels >=
                    (scrollInfo.metrics.maxScrollExtent - 300)) {
                  _loadMore();
                }
                return true;
              },
              child: LayoutBuilder(builder: (context, constraints) {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount:
                      (present <= totalCount) ? items.length + 1 : items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: constraints.maxWidth > 600
                        ? (constraints.maxWidth ~/ 200)
                        : 2,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    if (items.isEmpty && !isRequestProcessing) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.no_accounts,
                                size: 125,
                                color: app_theme.error,
                              ),
                              Text(context.lwTranslate.noResultFound),
                            ],
                          ),
                        ),
                      );
                    } else if ((index == items.length) &&
                        (totalCount != 0) &&
                        (items.length == totalCount) &&
                        !isRequestProcessing) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.stop_circle,
                                size: 125,
                                color: app_theme.error,
                              ),
                              Text(context.lwTranslate.endOfResult),
                            ],
                          ),
                        ),
                      );
                    } else if ((index == items.length)) {
                      return const Card(
                        // alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: AppItemProgressIndicator(
                            size: 20,
                          ),
                        ),
                      );
                    } else {
                      Map<String, dynamic> userItem = items[index];
                      if (userRequestType == 'blocked_users') {
                        userItem['user_blocked'] = true;
                      }
                      return OpenContainer<bool>(
                        transitionType: ContainerTransitionType.fade,
                        openBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return ProfileDetailsPage(
                            userProfileItem: userItem,
                          );
                        },
                        openColor: Theme.of(context).colorScheme.surface,
                        closedColor: Theme.of(context).colorScheme.surface,
                        closedShape: const RoundedRectangleBorder(),
                        closedElevation: 0.0,
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return Stack(
                            children: [
                              Card(
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                      child: AppCachedNetworkImage(
                                          imageUrl: userItem['profileImage'] ??
                                              userItem['userImageUrl']),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: <Color>[
                                            Color.fromRGBO(0, 0, 0, 0),
                                            Color.fromRGBO(0, 0, 0, 20),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          (userItem['fullName'] ??
                                                  userItem['userFullName']) ??
                                              '',
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.clip,
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (userItem['detailString'] !=
                                                  null)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    userItem['detailString']
                                                        .toString(),
                                                  ),
                                                ),
                                              if (userItem['countryName'] !=
                                                  null)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    userItem['countryName'] ??
                                                        '',
                                                    textAlign: TextAlign.center,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              if (userItem['created_at'] !=
                                                  null)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    userItem['created_at'] ??
                                                        '',
                                                    style: const TextStyle(
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              if (userRequestType ==
                                                  'blocked_users')
                                                ElevatedButton(
                                                  child: Text(
                                                    context.lwTranslate.unblock,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      items.removeWhere((item) {
                                                        return item[
                                                                'userUId'] ==
                                                            userItem['userUId'];
                                                      });
                                                      totalCount =
                                                          totalCount - 1;
                                                    });
                                                    data_transport.post(
                                                      '${userItem['userUId']}/unblock-user-data',
                                                      context: context,
                                                      onSuccess:
                                                          (responseData) {},
                                                    );
                                                  },
                                                )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              if (userItem['isPremiumUser'])
                                const Positioned(
                                  top: 10,
                                  left: 10,
                                  child: PremiumBadgeWidget(size: 32),
                                ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  // ignore: prefer_const_constructors
                                  decoration: BoxDecoration(
                                    color: ((userItem['userOnlineStatus'] == 1)
                                        ? Colors.green
                                        : (userItem['userOnlineStatus'] == 2
                                            ? Colors.orange
                                            : Colors.red)),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                );
              }),
            ),
    );
  }

  Future<void> _showFilterBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        late final TabController tabController;
        List<Widget> filterTabs = [
          Tab(
            text: context.lwTranslate.basic,
          ),
          Tab(
            child: _badgeCount(
                context, 'personal', {'title': context.lwTranslate.personal}),
          ),
        ];
        tempFilterInputData['name'] =
            (basicFilterData['name'] != null) ? basicFilterData['name'] : '';
        tempFilterInputData['username'] = (basicFilterData['username'] != null)
            ? basicFilterData['username']
            : '';
        tempFilterInputData['looking_for'] =
            basicFilterData['looking_for'].toString();
        tempFilterInputData['min_age'] = basicFilterData['min_age'].toString();
        tempFilterInputData['max_age'] = basicFilterData['max_age'].toString();
        tempFilterInputData['distance'] = (basicFilterData['distance'] != null)
            ? basicFilterData['distance']
            : '';

        List<Widget> filterChildren = <Widget>[
          InputField(
            initialValue: tempFilterInputData['name'],
            labelText: context.lwTranslate.name,
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'name', value);
            },
          ),
          InputField(
            initialValue: tempFilterInputData['username'],
            labelText: context.lwTranslate.username,
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'username', value);
            },
          ),
          SelectField(
            value: tempFilterInputData['looking_for'],
            listItems: genderList,
            labelText: context.lwTranslate.lookingFor,
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'looking_for', value);
            },
          ),
          SelectField(
            value: tempFilterInputData['min_age'],
            listItems: basicFilterData['minAgeList'],
            labelText: context.lwTranslate.minimumAge,
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'min_age', value);
            },
          ),
          SelectField(
            value: tempFilterInputData['max_age'],
            listItems: basicFilterData['maxAgeList'],
            labelText: context.lwTranslate.maximumAge,
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'max_age', value);
            },
          ),
          InputField(
            inputType: TextInputType.number,
            initialValue: tempFilterInputData['distance'],
            labelText: context.lwTranslate.distanceFromMyLocationDistanceUnit(
                basicFilterData['distanceUnit']),
            // prefixIcon: const Icon(Icons.person),
            onChanged: (String? value) {
              _updateTempFindFilterData(context, 'distance', value);
            },
          )
        ];
        List<Widget> filterPersonalChildren = <Widget>[];
        if (!specificationSelectedCount.containsKey('personal')) {
          specificationSelectedCount['personal'] = 0;
        }
        filterPersonalChildren.add(Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Language',
              style: TextStyle(
                  fontSize: 15, color: Theme.of(context).primaryColor)),
        ));
        getItemValue(dataResponse, 'userSettings.preferred_language')
            .forEach((itemOptionKey, itemOptionValue) {
          bool? isChecked = tempFilterInputData.containsKey('language') &&
              tempFilterInputData['language'].contains(itemOptionKey);
          filterPersonalChildren.add(StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return CheckboxListTile(
              title: Text(itemOptionValue),
              activeColor: Theme.of(context).primaryColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = (value == true);
                  if (value == true) {
                    _updateTempFindFilterData(
                        context, 'language', itemOptionKey,
                        isSync: true);
                    specificationSelectedCount['personal'] =
                        (specificationSelectedCount['personal']! + 1);
                  } else {
                    if (tempFilterInputData['language']
                        .contains(itemOptionKey)) {
                      tempFilterInputData['language'].removeWhere(
                          (removeValue) => removeValue == itemOptionKey);
                      specificationSelectedCount['personal'] =
                          (specificationSelectedCount['personal']! - 1);
                    }
                  }
                });

                filterTabs[tabController.index] = Tab(
                  child: _badgeCount(context, 'personal',
                      {'title': context.lwTranslate.personal}),
                );
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                tabController.notifyListeners();
                // }));
              },
            );
          }));
        });
        // relationship_status Status
        filterPersonalChildren.add(Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Relationship Status',
              style: TextStyle(
                  fontSize: 15, color: Theme.of(context).primaryColor)),
        ));
        getItemValue(dataResponse, 'userSettings.relationship_status')
            .forEach((itemOptionKey, itemOptionValue) {
          bool? isChecked =
              tempFilterInputData.containsKey('relationship_status') &&
                  tempFilterInputData['relationship_status']
                      .contains(itemOptionKey);
          filterPersonalChildren.add(StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return CheckboxListTile(
              title: Text(itemOptionValue),
              activeColor: Theme.of(context).primaryColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = (value == true);
                  // itemOptionKey = itemOptionKey;
                  if (value == true) {
                    _updateTempFindFilterData(
                        context, 'relationship_status', itemOptionKey,
                        isSync: true);
                    specificationSelectedCount['personal'] =
                        (specificationSelectedCount['personal']! + 1);
                  } else {
                    if (tempFilterInputData['relationship_status']
                        .contains(itemOptionKey)) {
                      tempFilterInputData['relationship_status'].removeWhere(
                          (removeValue) => removeValue == itemOptionKey);
                      specificationSelectedCount['personal'] =
                          (specificationSelectedCount['personal']! - 1);
                    }
                  }
                });

                filterTabs[tabController.index] = Tab(
                  child: _badgeCount(context, 'personal',
                      {'title': context.lwTranslate.personal}),
                );
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                tabController.notifyListeners();
                // }));
              },
            );
          }));
        });
        // Work Status
        filterPersonalChildren.add(Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Work Status',
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ));
        getItemValue(dataResponse, 'userSettings.work_status')
            .forEach((itemOptionKey, itemOptionValue) {
          bool? isChecked = tempFilterInputData.containsKey('work_status') &&
              tempFilterInputData['work_status'].contains(itemOptionKey);
          filterPersonalChildren.add(StatefulBuilder(builder: (
            BuildContext context,
            StateSetter setState,
          ) {
            return CheckboxListTile(
              title: Text(itemOptionValue),
              activeColor: Theme.of(context).primaryColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = (value == true);
                  // itemOptionKey = itemOptionKey;
                  if (value == true) {
                    _updateTempFindFilterData(
                        context, 'work_status', itemOptionKey,
                        isSync: true);
                    specificationSelectedCount['personal'] =
                        (specificationSelectedCount['personal']! + 1);
                  } else {
                    if (tempFilterInputData['work_status']
                        .contains(itemOptionKey)) {
                      tempFilterInputData['work_status'].removeWhere(
                          (removeValue) => removeValue == itemOptionKey);
                      specificationSelectedCount['personal'] =
                          (specificationSelectedCount['personal']! - 1);
                    }
                  }
                });

                filterTabs[tabController.index] = Tab(
                  child: _badgeCount(context, 'personal',
                      {'title': context.lwTranslate.personal}),
                );
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                tabController.notifyListeners();
                // }));
              },
            );
          }));
        });
        // relationship_status Status
        filterPersonalChildren.add(Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Education',
              style: TextStyle(
                  fontSize: 15, color: Theme.of(context).primaryColor)),
        ));
        getItemValue(dataResponse, 'userSettings.educations')
            .forEach((itemOptionKey, itemOptionValue) {
          bool? isChecked = tempFilterInputData.containsKey('education') &&
              tempFilterInputData['education'].contains(itemOptionKey);
          filterPersonalChildren.add(StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return CheckboxListTile(
              title: Text(itemOptionValue),
              activeColor: Theme.of(context).primaryColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = (value == true);
                  if (value == true) {
                    _updateTempFindFilterData(
                        context, 'education', itemOptionKey,
                        isSync: true);
                    specificationSelectedCount['personal'] =
                        (specificationSelectedCount['personal']! + 1);
                  } else {
                    if (tempFilterInputData['education']
                        .contains(itemOptionKey)) {
                      tempFilterInputData['education'].removeWhere(
                          (removeValue) => removeValue == itemOptionKey);
                      specificationSelectedCount['personal'] =
                          (specificationSelectedCount['personal']! - 1);
                    }
                  }
                });

                filterTabs[tabController.index] = Tab(
                  child: _badgeCount(context, 'personal',
                      {'title': context.lwTranslate.personal}),
                );
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                tabController.notifyListeners();
                // }));
              },
            );
          }));
        });
        List<Widget> filterTabViews = [
          // Icon(Icons.music_note),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: filterChildren,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: filterPersonalChildren,
              ),
            ),
          ),
        ];
        specificationDataSettings
            .forEach((specificationItemIndex, specificationItem) {
          if ((specificationItemIndex != 'favorites')) {
            if (!specificationSelectedCount
                .containsKey(specificationItemIndex)) {
              specificationSelectedCount[specificationItemIndex] = 0;
            }

            List<Widget> filterChildren = [];
            filterTabs.add(
              Tab(
                child: _badgeCount(
                    context, specificationItemIndex, specificationItem),
              ),
            );
            specificationItem['items']
                .forEach((itemOptionKey, itemOptionValue) {
              if (itemOptionKey == 'height') {
                filterChildren.addAll([
                  SelectField(
                    value: tempFilterInputData['min_height'],
                    listItems: itemOptionValue['options'],
                    labelText: context.lwTranslate.minimumHeight,
                    onChanged: (String? value) {
                      _updateTempFindFilterData(context, 'min_height', value);
                    },
                  ),
                  SelectField(
                    value: tempFilterInputData['max_height'],
                    listItems: itemOptionValue['options'],
                    labelText: context.lwTranslate.maximumHeight,
                    onChanged: (String? value) {
                      _updateTempFindFilterData(context, 'max_height', value);
                    },
                  )
                ]);
              } else {
                filterChildren.add(Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    itemOptionValue['name'],
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ));
                if (itemOptionValue['options'] != null) {
                  itemOptionValue['options']
                      .forEach((subOptionKey, subOptionValue) {
                    bool? isChecked =
                        tempFilterInputData.containsKey(itemOptionKey) &&
                            tempFilterInputData[itemOptionKey]
                                .contains(subOptionKey);
                    filterChildren.add(StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return CheckboxListTile(
                        title: Text(subOptionValue),
                        activeColor: Theme.of(context).primaryColor,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = (value == true);
                          });
                          if (value == true) {
                            _updateTempFindFilterData(
                                context, itemOptionKey, subOptionKey,
                                isSync: true);
                            specificationSelectedCount[specificationItemIndex] =
                                (specificationSelectedCount[
                                        specificationItemIndex]! +
                                    1);
                          } else {
                            if (tempFilterInputData[itemOptionKey]
                                .contains(subOptionKey)) {
                              tempFilterInputData[itemOptionKey].removeWhere(
                                  (removeValue) => removeValue == subOptionKey);
                              specificationSelectedCount[
                                      specificationItemIndex] =
                                  (specificationSelectedCount[
                                          specificationItemIndex]! -
                                      1);
                            }
                          }
                          filterTabs[tabController.index] = Tab(
                            child: _badgeCount(context, specificationItemIndex,
                                specificationItem),
                          );
                          // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                          tabController.notifyListeners();
                        },
                      );
                    }));
                  });
                }
              }
            });

            filterTabViews.add(Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: filterChildren,
                ),
              ),
            ));
          }
        });
        tabController = TabController(
          length: filterTabs.length,
          vsync: this,
        );

        return Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                centerTitle: false,
                automaticallyImplyLeading: true,
                actions: [
                  TextButton(
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.clear,
                            size: 14,
                          ),
                          Text(
                            'Clear all Filters',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          tempFilterInputData = {
                            'name': '',
                            'username': '',
                            'distance': '',
                            'looking_for': 'all',
                            'min_age': basicFilterData['minAgeList'].first,
                            'max_age': basicFilterData['maxAgeList'].last,
                          };
                          applyFiltersAnLoadSearchResult();
                        });
                        specificationSelectedCount['personal'] = 0;
                        specificationDataSettings.forEach(
                            (specificationItemIndex, specificationItem) {
                          if ((specificationItemIndex != 'favorites')) {
                            specificationSelectedCount[specificationItemIndex] =
                                0;
                          }
                        });
                        Navigator.pop(context);
                      }),
                  TextButton(
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.check_mark,
                            size: 24,
                          ),
                          Text(
                            context.lwTranslate.apply,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      onPressed: () {
                        applyFiltersAnLoadSearchResult();
                        Navigator.pop(context);
                      })
                ],
                bottom: TabBar(
                  isScrollable: true,
                  controller: tabController,
                  tabs: filterTabs,
                  indicatorColor: Theme.of(context).primaryColor,
                ), // TabBar
                title: const Text('Filters'),
              ), // AppBar
              body: TabBarView(
                controller: tabController,
                children: filterTabViews,
              ), // TabBarView
            ), // DefaultTabController
          ),
        );
      },
    );
  }

  Widget _badgeCount(
      BuildContext context, specificationItemIndex, specificationItem) {
    return specificationSelectedCount.containsKey(specificationItemIndex) &&
            specificationSelectedCount[specificationItemIndex]! > 0
        ? badges.Badge(
            position: badges.BadgePosition.topEnd(end: -22),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Theme.of(context).primaryColor,
            ),
            badgeContent: Text(
              specificationSelectedCount[specificationItemIndex].toString(),
            ),
            child: Text(
              specificationItem['title'],
            ),
          )
        : Text(
            specificationItem['title'],
          );
  }

  @override
  bool get wantKeepAlive => true;
}

class UserFindFilter extends StatelessWidget {
  const UserFindFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(context.lwTranslate.home),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
