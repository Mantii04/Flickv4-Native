.class public final LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/e;


# virtual methods
.method public obtainBounds(LN/n;Landroid/graphics/Rect;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, LN/n;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    check-cast p1, LN/n;

    invoke-virtual {p0, p1, p2}, LW/a;->obtainBounds(LN/n;Landroid/graphics/Rect;)V

    return-void
.end method
