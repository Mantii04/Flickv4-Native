.class public abstract Lh4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:F

.field public e:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh4/j;->e:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    return-void
.end method

.method public static ofFloat(F)Lh4/j;
    .locals 1

    .line 2
    new-instance v0, Lh4/h;

    .line 3
    invoke-direct {v0}, Lh4/j;-><init>()V

    .line 4
    iput p0, v0, Lh4/j;->b:F

    return-object v0
.end method

.method public static ofFloat(FF)Lh4/j;
    .locals 1

    .line 1
    new-instance v0, Lh4/h;

    invoke-direct {v0, p0, p1}, Lh4/h;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Lh4/j;
    .locals 1

    .line 2
    new-instance v0, Lh4/i;

    .line 3
    invoke-direct {v0}, Lh4/j;-><init>()V

    .line 4
    iput p0, v0, Lh4/j;->b:F

    return-object v0
.end method

.method public static ofInt(FI)Lh4/j;
    .locals 1

    .line 1
    new-instance v0, Lh4/i;

    invoke-direct {v0, p0, p1}, Lh4/i;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lh4/j;
.end method

.method public getFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lh4/j;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/j;->e:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/j;->e:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method
