.class public final Lf1/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lf1/k0;->a:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public build()Lf1/l0;
    .locals 1

    .line 1
    new-instance v0, Lf1/l0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf1/l0;-><init>(Lf1/k0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setMediaTransferReceiverEnabled(Z)Lf1/k0;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lf1/k0;->a:Z

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setOutputSwitcherEnabled(Z)Lf1/k0;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lf1/k0;->b:Z

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setTransferToLocalEnabled(Z)Lf1/k0;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lf1/k0;->c:Z

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method
