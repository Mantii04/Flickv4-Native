.class public final LW/c;
.super LN/q;
.source "SourceFile"


# instance fields
.field public final synthetic b:LW/d;


# direct methods
.method public constructor <init>(LW/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW/c;->b:LW/d;

    .line 2
    .line 3
    invoke-direct {p0}, LN/q;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)LN/n;
    .locals 1

    .line 1
    iget-object v0, p0, LW/c;->b:LW/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LW/d;->c(I)LN/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, LN/n;->obtain(LN/n;)LN/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public findFocus(I)LN/n;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, LW/c;->b:LW/d;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, v1, LW/d;->k:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p1, v1, LW/d;->l:I

    .line 10
    .line 11
    :goto_0
    const/high16 v0, -0x80000000

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, LW/c;->createAccessibilityNodeInfo(I)LN/n;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, LW/c;->b:LW/d;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, v0, LW/d;->i:Landroid/view/View;

    .line 5
    .line 6
    if-eq p1, v1, :cond_8

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p2, v1, :cond_7

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq p2, v3, :cond_6

    .line 13
    .line 14
    const/16 v3, 0x40

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/high16 v5, 0x10000

    .line 18
    .line 19
    const/high16 v6, -0x80000000

    .line 20
    .line 21
    if-eq p2, v3, :cond_2

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    if-eq p2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, LW/d;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_0
    iget p2, v0, LW/d;->k:I

    .line 33
    .line 34
    if-ne p2, p1, :cond_1

    .line 35
    .line 36
    iput v6, v0, LW/d;->k:I

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v5}, LW/d;->sendEventForVirtualView(II)Z

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    return v4

    .line 46
    :cond_2
    iget-object p2, v0, LW/d;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_5

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget p2, v0, LW/d;->k:I

    .line 62
    .line 63
    if-eq p2, p1, :cond_5

    .line 64
    .line 65
    if-eq p2, v6, :cond_4

    .line 66
    .line 67
    iput v6, v0, LW/d;->k:I

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2, v5}, LW/d;->sendEventForVirtualView(II)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    iput p1, v0, LW/d;->k:I

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    const p2, 0x8000

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, LW/d;->sendEventForVirtualView(II)Z

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :cond_5
    :goto_0
    return v4

    .line 88
    :cond_6
    invoke-virtual {v0, p1}, LW/d;->clearKeyboardFocusForVirtualView(I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_7
    invoke-virtual {v0, p1}, LW/d;->requestKeyboardFocusForVirtualView(I)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    :cond_8
    invoke-static {v2, p2, p3}, LM/p0;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1
.end method
