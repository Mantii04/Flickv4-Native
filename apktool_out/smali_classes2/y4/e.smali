.class public final Ly4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/AnimeHistoryActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/AnimeHistoryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/e;->b:Lflix/com/vision/activities/AnimeHistoryActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ly4/e;->b:Lflix/com/vision/activities/AnimeHistoryActivity;

    .line 5
    .line 6
    iget-object p2, p1, Lflix/com/vision/activities/AnimeHistoryActivity;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lflix/com/vision/activities/AnimeHistoryActivity;->j:LC4/k;

    .line 12
    .line 13
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 21
    .line 22
    invoke-virtual {p1}, LP4/e;->clearHistory_Anime()Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
