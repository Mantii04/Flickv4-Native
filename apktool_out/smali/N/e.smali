.class public abstract LN/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;LN/c;)Z
    .locals 1

    .line 1
    new-instance v0, LN/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LN/d;-><init>(LN/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;LN/c;)Z
    .locals 1

    .line 1
    new-instance v0, LN/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LN/d;-><init>(LN/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
