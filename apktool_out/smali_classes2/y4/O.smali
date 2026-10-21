.class public final synthetic Ly4/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/FilterActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/FilterActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/O;->b:I

    iput-object p1, p0, Ly4/O;->e:Lflix/com/vision/activities/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ly4/O;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Ly4/O;->e:Lflix/com/vision/activities/FilterActivity;

    .line 8
    .line 9
    iput-boolean v0, v1, Lflix/com/vision/activities/FilterActivity;->M:Z

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Ly4/O;->e:Lflix/com/vision/activities/FilterActivity;

    .line 13
    .line 14
    iget v1, v0, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/FilterActivity;->e(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
