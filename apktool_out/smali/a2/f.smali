.class public final La2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public final b:LZ1/h;

.field public final c:LZ1/d;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;LZ1/h;LZ1/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/f;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 5
    .line 6
    iput-object p2, p0, La2/f;->b:LZ1/h;

    .line 7
    .line 8
    iput-object p3, p0, La2/f;->c:LZ1/d;

    .line 9
    .line 10
    iput-boolean p4, p0, La2/f;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .line 1
    iget-object v0, p0, La2/f;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaskPath()LZ1/h;
    .locals 1

    .line 1
    iget-object v0, p0, La2/f;->b:LZ1/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()LZ1/d;
    .locals 1

    .line 1
    iget-object v0, p0, La2/f;->c:LZ1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInverted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/f;->d:Z

    .line 2
    .line 3
    return v0
.end method
