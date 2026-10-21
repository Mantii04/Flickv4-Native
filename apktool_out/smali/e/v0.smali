.class public final Le/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/F0;


# instance fields
.field public final synthetic a:Le/x0;


# direct methods
.method public constructor <init>(Le/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/v0;->a:Le/x0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/v0;->a:Le/x0;

    .line 2
    .line 3
    iget-object p1, p1, Le/x0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
