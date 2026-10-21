.class public final Ly4/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/SeriesDetailActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/SeriesDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/R0;->a:Lflix/com/vision/activities/SeriesDetailActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/R0;->a:Lflix/com/vision/activities/SeriesDetailActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->b:Landroid/widget/TextView;

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
    iget-object v0, v0, Lflix/com/vision/activities/SeriesDetailActivity;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
