.class public final LK/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/m;


# static fields
.field public static final a:LK/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LK/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LK/k;->a:LK/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p3, p2

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v3, 0x2

    .line 6
    if-ge p2, p3, :cond_4

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sget-object v5, LK/p;->a:LK/o;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    if-eq v4, v0, :cond_0

    .line 21
    .line 22
    if-eq v4, v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v3, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, v0

    .line 28
    :goto_1
    if-eqz v3, :cond_3

    .line 29
    .line 30
    if-eq v3, v0, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v2, v0

    .line 34
    :goto_2
    add-int/2addr p2, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return v1

    .line 37
    :cond_4
    if-eqz v2, :cond_5

    .line 38
    .line 39
    return v0

    .line 40
    :cond_5
    return v3
.end method
