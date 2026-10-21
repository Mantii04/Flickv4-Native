.class public final Ll/l;
.super Lk/C;
.source "SourceFile"


# instance fields
.field public final synthetic m:Ll/u;


# direct methods
.method public constructor <init>(Ll/u;Landroid/content/Context;Lk/M;Landroid/view/View;)V
    .locals 6

    .line 1
    iput-object p1, p0, Ll/l;->m:Ll/u;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lk/C;-><init>(Landroid/content/Context;Lk/p;Landroid/view/View;ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lk/M;->getItem()Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lk/s;

    .line 18
    .line 19
    invoke-virtual {p2}, Lk/s;->isActionButton()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p1, Ll/u;->s:Ll/p;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget-object p2, p1, Lk/d;->q:Lk/G;

    .line 30
    .line 31
    check-cast p2, Landroid/view/View;

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p2}, Lk/C;->setAnchorView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p1, Ll/u;->G:Ll/r;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lk/C;->setPresenterCallback(Lk/D;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll/l;->m:Ll/u;

    .line 3
    .line 4
    iput-object v0, v1, Ll/u;->D:Ll/l;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, v1, Ll/u;->H:I

    .line 8
    .line 9
    invoke-super {p0}, Lk/C;->onDismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
