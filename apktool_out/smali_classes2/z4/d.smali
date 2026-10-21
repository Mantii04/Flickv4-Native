.class public final synthetic Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultHistoryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/d;->b:I

    iput-object p1, p0, Lz4/d;->e:Lflix/com/vision/activities/adult/AdultHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lz4/d;->e:Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 2
    .line 3
    iget v0, p0, Lz4/d;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lflix/com/vision/activities/adult/AdultHistoryActivity;->r:LC4/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 23
    .line 24
    invoke-virtual {v0}, LP4/e;->clearHistoryAdult()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    sget v0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v1, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 39
    .line 40
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
