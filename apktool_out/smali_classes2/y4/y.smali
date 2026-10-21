.class public final synthetic Ly4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/DramaHomeActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/DramaHomeActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/y;->b:I

    iput-object p1, p0, Ly4/y;->e:Lflix/com/vision/activities/DramaHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ly4/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly4/y;->e:Lflix/com/vision/activities/DramaHomeActivity;

    .line 7
    .line 8
    iget-object v1, v0, Lflix/com/vision/activities/DramaHomeActivity;->T:LQ4/d;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_0
    iget-object v0, v0, Lflix/com/vision/activities/DramaHomeActivity;->b:Landroid/widget/ScrollView;

    .line 16
    .line 17
    const/16 v1, 0x21

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Ly4/y;->e:Lflix/com/vision/activities/DramaHomeActivity;

    .line 25
    .line 26
    iput-boolean v0, v1, Lflix/com/vision/activities/DramaHomeActivity;->U:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
