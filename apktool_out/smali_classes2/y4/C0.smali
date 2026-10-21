.class public final Ly4/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Lflix/com/vision/models/Movie;

.field public final synthetic b:Lflix/com/vision/activities/MovieDetailActivityLeanBack;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;Lflix/com/vision/models/Movie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/C0;->b:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 5
    .line 6
    iput-object p2, p0, Ly4/C0;->a:Lflix/com/vision/models/Movie;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ly4/C0;->b:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 2
    .line 3
    iget-object p1, p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K0:Lme/grantland/widget/AutofitTextView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly4/C0;->b:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K0:Lme/grantland/widget/AutofitTextView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Ly4/C0;->a:Lflix/com/vision/models/Movie;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v1, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 16
    .line 17
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput-boolean v2, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Y0:Z

    .line 26
    .line 27
    return-void
.end method
