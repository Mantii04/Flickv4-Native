.class public final LK3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:LK3/q;


# direct methods
.method public constructor <init>(LK3/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/o;->b:LK3/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LK3/o;->b:LK3/q;

    .line 2
    .line 3
    iget-object v0, p1, LK3/q;->D:LN/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, LK3/q;->C:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, LM/p0;->isAttachedToWindow(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, LK3/q;->D:LN/c;

    .line 18
    .line 19
    invoke-static {v0, p1}, LN/e;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;LN/c;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LK3/o;->b:LK3/q;

    .line 2
    .line 3
    iget-object v0, p1, LK3/q;->D:LN/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, LK3/q;->C:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, LN/e;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;LN/c;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
