.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroidx/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0403c3

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;

    invoke-direct {p2, p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getCurrentIndex()I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getCurrentIndex()I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
