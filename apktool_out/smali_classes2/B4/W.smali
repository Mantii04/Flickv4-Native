.class public final LB4/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/W;->a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

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
    .locals 2

    .line 1
    iget-object v0, p0, LB4/W;->a:Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 2
    .line 3
    iget-object v0, v0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->u:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
