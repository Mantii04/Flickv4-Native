.class public final LI2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI2/l;


# instance fields
.field public final synthetic a:LI2/f;


# direct methods
.method public constructor <init>(LI2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/c;->a:LI2/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTimeUpdate(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LI2/c;->a:LI2/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, LI2/f;->a(LI2/f;F)V

    .line 7
    .line 8
    .line 9
    iget v1, v0, LI2/f;->q:F

    .line 10
    .line 11
    mul-float/2addr v1, p1

    .line 12
    iput v1, v0, LI2/f;->p:F

    .line 13
    .line 14
    iget-object p1, v0, LI2/f;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
