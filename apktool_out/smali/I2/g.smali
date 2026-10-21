.class public final LI2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:LI2/k;


# direct methods
.method public constructor <init>(LI2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/g;->b:LI2/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LI2/g;->b:LI2/k;

    .line 2
    .line 3
    iget v0, p1, LI2/k;->i:F

    .line 4
    .line 5
    invoke-virtual {p1, v0}, LI2/k;->a(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, LI2/k;->a:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
