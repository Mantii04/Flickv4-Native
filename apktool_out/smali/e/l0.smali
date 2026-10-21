.class public final Le/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/m2;


# instance fields
.field public final synthetic b:Le/p0;


# direct methods
.method public constructor <init>(Le/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/l0;->b:Le/p0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/l0;->b:Le/p0;

    .line 2
    .line 3
    iget-object v0, v0, Le/p0;->b:Landroid/view/Window$Callback;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
