.class public final LI2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:LI2/f;


# direct methods
.method public constructor <init>(LI2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/b;->b:LI2/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "ShadowGenerator"

    .line 2
    .line 3
    const-string v0, "Attached"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LI2/b;->b:LI2/f;

    .line 9
    .line 10
    iget v0, p1, LI2/f;->h:F

    .line 11
    .line 12
    invoke-static {p1, v0}, LI2/f;->a(LI2/f;F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, LI2/f;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
