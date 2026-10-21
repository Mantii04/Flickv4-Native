.class public final synthetic Ly4/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/DramaSearchActivityMobile;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/DramaSearchActivityMobile;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/D;->b:I

    iput-object p1, p0, Ly4/D;->e:Lflix/com/vision/activities/DramaSearchActivityMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ly4/D;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly4/D;->e:Lflix/com/vision/activities/DramaSearchActivityMobile;

    .line 7
    .line 8
    iget-object v0, v0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Ly4/D;->e:Lflix/com/vision/activities/DramaSearchActivityMobile;

    .line 16
    .line 17
    iput-boolean v0, v1, Lflix/com/vision/activities/DramaSearchActivityMobile;->q:Z

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
