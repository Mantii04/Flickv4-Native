.class public final Ll/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n;


# instance fields
.field public final synthetic b:Ll/v1;


# direct methods
.method public constructor <init>(Ll/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/s1;->b:Ll/v1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ll/s1;->b:Ll/v1;

    .line 2
    .line 3
    iget-object p1, p1, Ll/v1;->e:Ll/u1;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ll/u1;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public onMenuModeChange(Lk/p;)V
    .locals 0

    .line 1
    return-void
.end method
