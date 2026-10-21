.class public final LI/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LI/o;


# instance fields
.field public final a:LI/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 3
    .line 4
    invoke-static {v0}, LI/o;->create([Ljava/util/Locale;)LI/o;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, LI/o;->b:LI/o;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LI/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI/o;->a:LI/q;

    .line 5
    .line 6
    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)LI/o;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, LI/n;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, LI/o;->wrap(Landroid/os/LocaleList;)LI/o;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, LI/o;

    .line 17
    .line 18
    new-instance v1, LI/p;

    .line 19
    .line 20
    invoke-direct {v1, p0}, LI/p;-><init>([Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, LI/o;-><init>(LI/q;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)LI/o;
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, ","

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    new-array v1, v0, [Ljava/util/Locale;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    aget-object v3, p0, v2

    .line 24
    .line 25
    invoke-static {v3}, LI/m;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v1}, LI/o;->create([Ljava/util/Locale;)LI/o;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_2
    :goto_1
    invoke-static {}, LI/o;->getEmptyLocaleList()LI/o;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static getEmptyLocaleList()LI/o;
    .locals 1

    .line 1
    sget-object v0, LI/o;->b:LI/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public static wrap(Landroid/os/LocaleList;)LI/o;
    .locals 2

    .line 1
    new-instance v0, LI/o;

    .line 2
    .line 3
    new-instance v1, LI/r;

    .line 4
    .line 5
    invoke-direct {v1, p0}, LI/r;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LI/o;-><init>(LI/q;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LI/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LI/o;

    .line 6
    .line 7
    iget-object p1, p1, LI/o;->a:LI/q;

    .line 8
    .line 9
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LI/q;->get(I)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-interface {v0}, LI/q;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-interface {v0}, LI/q;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-interface {v0}, LI/q;->toLanguageTags()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LI/o;->a:LI/q;

    .line 2
    .line 3
    invoke-interface {v0}, LI/q;->getLocaleList()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
