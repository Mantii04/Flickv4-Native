.class public abstract LP3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/w;


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

.method public static a(C)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x5c

    .line 6
    .line 7
    aput-char v2, v0, v1

    .line 8
    .line 9
    const/16 v2, 0x75

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-char v2, v0, v3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aput-char v1, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    aput-char v1, v0, v2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    aput-char v1, v0, v2

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    aput-char v1, v0, v3

    .line 25
    .line 26
    :goto_0
    if-ge v1, v2, :cond_0

    .line 27
    .line 28
    rsub-int/lit8 v3, v1, 0x5

    .line 29
    .line 30
    and-int/lit8 v4, p0, 0xf

    .line 31
    .line 32
    const-string v5, "0123456789ABCDEF"

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    aput-char v4, v0, v3

    .line 39
    .line 40
    shr-int/2addr p0, v2

    .line 41
    int-to-char p0, p0

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static any()LP3/o;
    .locals 1

    .line 1
    sget-object v0, LP3/c;->e:LP3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)LP3/o;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    new-instance v0, LP3/d;

    .line 15
    .line 16
    invoke-direct {v0, p0}, LP3/d;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-instance v1, LP3/h;

    .line 29
    .line 30
    invoke-direct {v1, v0, p0}, LP3/h;-><init>(CC)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, LP3/o;->is(C)LP3/o;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    invoke-static {}, LP3/o;->none()LP3/o;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static ascii()LP3/o;
    .locals 1

    .line 1
    sget-object v0, LP3/e;->e:LP3/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static is(C)LP3/o;
    .locals 1

    .line 1
    new-instance v0, LP3/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LP3/g;-><init>(C)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static isNot(C)LP3/o;
    .locals 1

    .line 1
    new-instance v0, LP3/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LP3/i;-><init>(C)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static javaIsoControl()LP3/o;
    .locals 1

    .line 1
    sget-object v0, LP3/j;->e:LP3/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static none()LP3/o;
    .locals 1

    .line 1
    sget-object v0, LP3/n;->e:LP3/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)LP3/o;
    .locals 0

    .line 1
    invoke-static {p0}, LP3/o;->anyOf(Ljava/lang/CharSequence;)LP3/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, LP3/o;->negate()LP3/o;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public and(LP3/o;)LP3/o;
    .locals 1

    .line 1
    new-instance v0, LP3/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LP3/b;-><init>(LP3/o;LP3/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, LP3/o;->matches(C)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LP3/o;->indexIn(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3
    invoke-static {p2, v0}, LP3/v;->checkPositionIndex(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, LP3/o;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v2}, LP3/o;->matches(C)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LP3/o;->indexIn(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public negate()LP3/o;
    .locals 1

    .line 1
    new-instance v0, LP3/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LP3/l;-><init>(LP3/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
