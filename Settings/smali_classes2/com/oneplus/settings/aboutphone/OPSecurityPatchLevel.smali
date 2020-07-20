.class public Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;
.super Landroidx/preference/Preference;
.source "OPSecurityPatchLevel.java"


# static fields
.field private static final INTENT_URI_DATA:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://source.android.com/security/bulletin/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->INTENT_URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->INTENT_URI_DATA:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Lcom/android/settings/applications/PackageManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/applications/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const p1, 0x7f0d023a

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0633

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0635

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;-><init>(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
