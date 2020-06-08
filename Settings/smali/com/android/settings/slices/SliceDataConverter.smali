.class Lcom/android/settings/slices/SliceDataConverter;
.super Ljava/lang/Object;
.source "SliceDataConverter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method getAccessibilityServiceInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSliceData()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResourcesBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v4, "SliceDataConverter"

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Landroidx/transition/R$id;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dose not implement Search Index Provider"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v6, v5}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto/16 :goto_d

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    iget v0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " provides invalid XML (0) in search provider."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ""

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PreferenceScreen"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    iget-object v9, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/16 v10, 0x8fe

    invoke-static {v9, v0, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v10, "controller"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v16, v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v14

    goto :goto_4

    :cond_5
    const-string v10, "key"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "title"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "summary"

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v0

    const-string v0, "icon"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v3

    :try_start_1
    iget-object v3, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v10}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v14

    :try_start_2
    const-string v14, "platform_slice"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14
    :try_end_2
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v2

    :try_start_3
    const-string v2, "unavailable_slice_subtitle"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v9}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    invoke-virtual {v9, v10}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v11}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v5}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v0}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v8}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v6}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v12}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v3}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v14}, Lcom/android/settings/slices/SliceData$Builder;->setPlatformDefined(Z)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9, v2}, Lcom/android/settings/slices/SliceData$Builder;->setUnavailableSliceSubtitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v9}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v14, v18

    move-object/from16 v2, v19

    const/4 v5, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_9

    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v14

    goto/16 :goto_b

    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v14

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    :goto_5
    move-object/from16 v18, v14

    :goto_6
    :try_start_4
    const-string v2, "Get slice data from XML failed "

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v21, 0x0

    const/16 v22, 0x6bf

    const/16 v23, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_9

    goto :goto_b

    :catch_a
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    :goto_7
    move-object/from16 v18, v14

    :goto_8
    move-object v2, v7

    :try_start_5
    const-string v3, "Error parsing PreferenceScreen: "

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v7, 0x0

    const/16 v8, 0x6be

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v10, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_9

    move-object v7, v2

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    :goto_9
    move-object/from16 v18, v14

    :goto_a
    move-object/from16 v24, v6

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data when building SliceData for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v21, 0x0

    const/16 v22, 0x6bd

    const/16 v23, 0x0

    const/16 v25, 0x1

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_9

    :goto_b
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v3, v17

    move-object/from16 v14, v18

    move-object/from16 v2, v19

    const/4 v5, 0x1

    goto/16 :goto_1

    :goto_c
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    throw v0

    :goto_d
    move-object/from16 v2, v19

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const v7, 0x7f12008a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v7}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    invoke-virtual {v7, v5}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v7, v6}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v7, v0}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f030058

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilityServiceInfoList()Ljava/util/List;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_e

    :cond_c
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    if-nez v0, :cond_d

    const v0, 0x7f08018f

    :cond_d
    invoke-virtual {v7, v8}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v7, v9}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    invoke-virtual {v7, v0}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    :try_start_7
    invoke-virtual {v7}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_e

    :catch_c
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid data when building a11y SliceData for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_e
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method
