.class public Lcom/oneplus/settings/highpowerapp/MyActivityManager;
.super Ljava/lang/Object;
.source "MyActivityManager.java"

# interfaces
.implements Lcom/oneplus/settings/highpowerapp/IMyActivityManager;


# static fields
.field private static volatile instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;


# instance fields
.field private getBgPowerHungryList:Ljava/lang/reflect/Method;

.field isLocked:Ljava/lang/reflect/Field;

.field isStopped:Ljava/lang/reflect/Field;

.field packageName:Ljava/lang/reflect/Field;

.field powerLevel:Ljava/lang/reflect/Field;

.field private stopBgPowerHungryApp:Ljava/lang/reflect/Method;

.field timeStamp:Ljava/lang/reflect/Field;

.field uId:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    :try_start_0
    const-string v0, "com.oneplus.os.OnePlusServiceManagerInjector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBgPowerHungryList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    const-string v1, "stopBgPowerHungryApp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyActivityManager Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyActivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    .locals 1

    sget-object p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez p0, :cond_1

    const-class p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-direct {v0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;-><init>()V

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    return-object p0
.end method


# virtual methods
.method public getBgPowerHungryList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    const/16 v6, 0x25

    const/4 v7, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "pkgName"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "powerLevel"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "isLocked"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "isStopped"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "timeStamp"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v0, v7, [I

    aput v6, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "uid"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-array v7, v7, [I

    aput v6, v7, v2

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v7, ", stop="

    const-string v13, ", lock="

    const-string v11, ", level="

    const-string v10, "convert pn: "

    const-string v9, "MyActivityManager"

    if-eqz v6, :cond_1

    :try_start_2
    iget-object v6, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v6

    move-object v2, v9

    move-object v9, v0

    move-object v1, v10

    move v10, v5

    move-object/from16 v18, v4

    move-object v4, v11

    move v11, v14

    move-object/from16 v19, v2

    move-object v2, v13

    move v13, v15

    move-object/from16 v20, v7

    move v7, v14

    move/from16 v21, v15

    move-wide/from16 v14, v16

    :try_start_3
    invoke-direct/range {v8 .. v15}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid ="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v21

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v19

    invoke-static {v6, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move-object/from16 v18, v4

    move-object v5, v7

    move-object v6, v9

    move-object v1, v10

    move-object v4, v11

    move-object v2, v13

    move v7, v14

    new-instance v13, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-object v8, v13

    move-object v9, v0

    move v10, v7

    move v11, v12

    move v12, v15

    move-object/from16 v19, v6

    move-object v6, v13

    move-wide/from16 v13, v16

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IZZJ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_2
    return-object v3
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setBgMonitorMode(Z)V
    .locals 0

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
