.class public final LI2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI2/l;


# instance fields
.field public final synthetic a:LI2/k;


# direct methods
.method public constructor <init>(LI2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/h;->a:LI2/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTimeUpdate(F)V
    .locals 4

    .line 1
    iget-object v0, p0, LI2/h;->a:LI2/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, LI2/k;->a(F)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, LI2/k;->h:Landroid/animation/ArgbEvaluator;

    .line 10
    .line 11
    iget v2, v0, LI2/k;->e:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, v0, LI2/k;->f:I

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, v0, LI2/k;->g:I

    .line 34
    .line 35
    iget-object p1, v0, LI2/k;->a:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
