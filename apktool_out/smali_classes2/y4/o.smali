.class public final synthetic Ly4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/AnimesListActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/AnimesListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/o;->b:I

    iput-object p1, p0, Ly4/o;->e:Lflix/com/vision/activities/AnimesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly4/o;->e:Lflix/com/vision/activities/AnimesListActivity;

    .line 2
    .line 3
    iget v1, p0, Ly4/o;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lflix/com/vision/activities/AnimesListActivity;->D:Z

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget v1, Lflix/com/vision/activities/AnimesListActivity;->E:I

    .line 13
    .line 14
    invoke-virtual {v0}, Lflix/com/vision/activities/AnimesListActivity;->ExtractDominentColor()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
