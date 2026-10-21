.class public final Ll/q;
.super Lk/C;
.source "SourceFile"


# instance fields
.field public final synthetic m:Ll/u;


# direct methods
.method public constructor <init>(Ll/u;Landroid/content/Context;Lk/p;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Ll/q;->m:Ll/u;

    .line 2
    .line 3
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move-object v3, p4

    .line 9
    move v4, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lk/C;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZI)V

    .line 11
    .line 12
    .line 13
    const p2, 0x800005

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lk/C;->setGravity(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Ll/u;->G:Ll/r;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lk/C;->setPresenterCallback(Lk/D;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/q;->m:Ll/u;

    .line 2
    .line 3
    iget-object v1, v0, Lk/d;->f:Lk/p;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lk/p;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Ll/u;->C:Ll/q;

    .line 12
    .line 13
    invoke-super {p0}, Lk/C;->onDismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
