.class public final synthetic Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->lambda$onPackageRemoved$2$DefaultAutofillPicker$1()V

    return-void
.end method
