.class public Lflix/com/vision/models/C4876a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final f14363a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    add-int/2addr v3, v0

    .line 15
    xor-int/2addr v2, v3

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    iput p2, p0, Lflix/com/vision/models/C4876a;->f14363a:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput v2, p0, Lflix/com/vision/models/C4876a;->f14363a:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public m18760a()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/models/C4876a;->f14363a:I

    .line 2
    .line 3
    return v0
.end method
