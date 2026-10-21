.class public final LI2/m;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final b:LI2/l;


# direct methods
.method public constructor <init>(LI2/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/m;->b:LI2/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    iget-object p2, p0, LI2/m;->b:LI2/l;

    .line 2
    .line 3
    invoke-interface {p2, p1}, LI2/l;->onTimeUpdate(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
