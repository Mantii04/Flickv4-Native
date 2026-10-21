.class public final Ly4/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/t0;->b:Lflix/com/vision/activities/MovieDetailActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/gson/JsonElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseSuggestions(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ly4/t0;->b:Lflix/com/vision/activities/MovieDetailActivity;

    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->e0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    invoke-virtual {v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V

    .line 4
    iget-object v0, v0, Lflix/com/vision/activities/MovieDetailActivity;->e0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    invoke-virtual {v0, p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->addSuggestions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1}, Ly4/t0;->accept(Lcom/google/gson/JsonElement;)V

    return-void
.end method
