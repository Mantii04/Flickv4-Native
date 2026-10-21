.class public final Lf1/f;
.super Lp0/m;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lf1/g;


# direct methods
.method public constructor <init>(Lf1/g;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/f;->g:Lf1/g;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lp0/m;-><init>(IIILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/f;->g:Lf1/g;

    .line 2
    .line 3
    iget-object v0, v0, Lf1/g;->c:Lf1/k;

    .line 4
    .line 5
    new-instance v1, Lf1/e;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lf1/e;-><init>(Lf1/f;II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lf1/k;->m:Lf1/d;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/f;->g:Lf1/g;

    .line 2
    .line 3
    iget-object v0, v0, Lf1/g;->c:Lf1/k;

    .line 4
    .line 5
    new-instance v1, Lf1/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lf1/e;-><init>(Lf1/f;II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lf1/k;->m:Lf1/d;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
