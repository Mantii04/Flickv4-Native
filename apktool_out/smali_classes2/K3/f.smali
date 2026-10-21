.class public final LK3/f;
.super LG3/i;
.source "SourceFile"


# instance fields
.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LG3/p;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LG3/i;-><init>(LG3/p;Lu3/a;)V

    .line 2
    iput-object p2, p0, LK3/f;->q:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(LK3/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LG3/i;-><init>(LG3/i;)V

    .line 4
    iget-object p1, p1, LK3/f;->q:Landroid/graphics/RectF;

    iput-object p1, p0, LK3/f;->q:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, LK3/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LG3/j;-><init>(LG3/i;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, LK3/h;->H:LK3/f;

    .line 7
    .line 8
    invoke-virtual {v0}, LG3/j;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
