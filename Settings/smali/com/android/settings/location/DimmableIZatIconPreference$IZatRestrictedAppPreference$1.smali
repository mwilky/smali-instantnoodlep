.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userConsentNotify"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    aget-object p2, p3, p1

    if-eqz p2, :cond_2

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p3, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    invoke-static {p3}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->access$600(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)Z

    move-result p3

    if-eq p3, p2, :cond_2

    iget-object p3, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    invoke-static {p3, p2}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->access$602(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;Z)Z

    iget-object p2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    invoke-static {p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->access$600(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    invoke-static {p2, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$300(Lcom/android/settings/widget/AppPreference;Z)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
