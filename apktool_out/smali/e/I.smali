.class public final Le/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/D;


# instance fields
.field public final synthetic b:Le/a0;


# direct methods
.method public constructor <init>(Le/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/I;->b:Le/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lk/p;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/I;->b:Le/a0;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Le/a0;->g(Lk/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onOpenSubMenu(Lk/p;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/I;->b:Le/a0;

    .line 2
    .line 3
    iget-object v0, v0, Le/a0;->u:Landroid/view/Window;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x6c

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method
