.class public final Lv0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lv0/m;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lv0/m;

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    const/4 v1, -0x3

    .line 11
    invoke-direct/range {v0 .. v5}, Lv0/m;-><init>(IJJ)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lv0/m;->d:Lv0/m;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv0/m;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lv0/m;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lv0/m;->c:J

    .line 9
    .line 10
    return-void
.end method

.method public static overestimatedResult(JJ)Lv0/m;
    .locals 6

    .line 1
    new-instance v0, Lv0/m;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    move-wide v2, p0

    .line 5
    move-wide v4, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lv0/m;-><init>(IJJ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static targetFoundResult(J)Lv0/m;
    .locals 6

    .line 1
    new-instance v0, Lv0/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    move-wide v4, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lv0/m;-><init>(IJJ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static underestimatedResult(JJ)Lv0/m;
    .locals 6

    .line 1
    new-instance v0, Lv0/m;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    move-wide v2, p0

    .line 5
    move-wide v4, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lv0/m;-><init>(IJJ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
