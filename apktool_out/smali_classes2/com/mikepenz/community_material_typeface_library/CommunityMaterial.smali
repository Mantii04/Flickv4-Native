.class public Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;
    }
.end annotation


# static fields
.field private static final TTF_FILE:Ljava/lang/String; = "communitymaterial-font-v1.8.36.1.ttf"

.field private static mChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Templarian / Community / Google"

    .line 2
    .line 3
    return-object v0
.end method

.method public getCharacters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->values()[Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-char v4, v4, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->b:C

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sput-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    .line 37
    .line 38
    :cond_1
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    .line 39
    .line 40
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Material Design Icons are the official open-source icons featured in the Google Material Design specification."

    .line 2
    .line 3
    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Community Material Design"

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lg4/a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->valueOf(Ljava/lang/String;)Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getIconCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIcons()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->values()[Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Templates - Free, Community Icons - SIL Open Font License 1.1, Google Material Design Icons: Attribution 4.0 International"

    .line 2
    .line 3
    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://raw.githubusercontent.com/Templarian/MaterialDesign/master/license.txt"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMappingPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "cmd"

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "fonts/communitymaterial-font-v1.8.36.1.ttf"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sput-object p1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    :goto_0
    sget-object p1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;

    .line 21
    .line 22
    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "http://materialdesignicons.com/"

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.8.36.1"

    .line 2
    .line 3
    return-object v0
.end method
