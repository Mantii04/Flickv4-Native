.class public final Ly4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic e:Lflix/com/vision/activities/AnimeSearchResultActivityClassic;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/AnimeSearchResultActivityClassic;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/i;->e:Lflix/com/vision/activities/AnimeSearchResultActivityClassic;

    .line 5
    .line 6
    iput-object p2, p0, Ly4/i;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/i;->e:Lflix/com/vision/activities/AnimeSearchResultActivityClassic;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Ly4/i;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->f:LC4/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
