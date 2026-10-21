.class public final LK/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/m;


# static fields
.field public static final a:LK/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LK/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LK/l;->a:LK/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p3, p2

    .line 3
    const/4 v1, 0x2

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge p2, p3, :cond_2

    .line 6
    .line 7
    if-ne v2, v1, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, LK/p;->a:LK/o;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-eq v2, v0, :cond_0

    .line 22
    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move v2, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :pswitch_0
    const/4 v2, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :pswitch_1
    move v2, v0

    .line 33
    :goto_1
    add-int/2addr p2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v2

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
