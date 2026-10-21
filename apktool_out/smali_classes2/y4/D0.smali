.class public final synthetic Ly4/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchActivityClassic;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchActivityClassic;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/D0;->b:I

    iput-object p1, p0, Ly4/D0;->e:Lflix/com/vision/activities/SearchActivityClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ly4/D0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly4/D0;->e:Lflix/com/vision/activities/SearchActivityClassic;

    .line 7
    .line 8
    iget-object v1, v0, Lflix/com/vision/activities/SearchActivityClassic;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 9
    .line 10
    invoke-virtual {v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->isOpen()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/activities/SearchActivityClassic;->isTV()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lflix/com/vision/activities/SearchActivityClassic;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Ly4/D0;->e:Lflix/com/vision/activities/SearchActivityClassic;

    .line 29
    .line 30
    iget-object v0, v0, Lflix/com/vision/activities/SearchActivityClassic;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
