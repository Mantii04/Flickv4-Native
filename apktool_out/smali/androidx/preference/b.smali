.class public final Landroidx/preference/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/b;


# static fields
.field public static a:Landroidx/preference/b;


# direct methods
.method public static getInstance()Landroidx/preference/b;
    .locals 1

    .line 1
    sget-object v0, Landroidx/preference/b;->a:Landroidx/preference/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/preference/b;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/preference/b;->a:Landroidx/preference/b;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/preference/b;->a:Landroidx/preference/b;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public provideSummary(Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/preference/R$string;->not_set:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/b;->provideSummary(Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
