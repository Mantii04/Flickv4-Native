.class public final Lk4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/g;


# instance fields
.field public final synthetic a:LH5/p;


# direct methods
.method public constructor <init>(LH5/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk4/o;->a:LH5/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSpinnerOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lk4/o;->a:LH5/p;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, LH5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
