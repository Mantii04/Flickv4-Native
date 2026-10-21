.class public final Lf1/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lf1/k0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lf1/k0;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lf1/l0;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, Lf1/k0;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lf1/l0;->b:Z

    .line 11
    .line 12
    iget-boolean p1, p1, Lf1/k0;->c:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lf1/l0;->c:Z

    .line 15
    .line 16
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Lf1/l0;->d:Landroid/os/Bundle;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getDialogType()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/l0;->d:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public isMediaTransferReceiverEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/l0;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOutputSwitcherEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/l0;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTransferToLocalEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/l0;->c:Z

    .line 2
    .line 3
    return v0
.end method
