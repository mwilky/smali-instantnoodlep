.class public Lcom/oneplus/lib/widget/preference/OPListPreference;
.super Lcom/oneplus/lib/preference/ListPreference;
.source "OPListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f130197

    const v1, 0x7f040340

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/preference/OPListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f130197

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method
