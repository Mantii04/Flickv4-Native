.class public final LK/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public b:Landroid/text/TextDirectionHeuristic;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK/g;->a:Landroid/text/TextPaint;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, LK/g;->c:I

    .line 8
    .line 9
    iput p1, p0, LK/g;->d:I

    .line 10
    .line 11
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 12
    .line 13
    iput-object p1, p0, LK/g;->b:Landroid/text/TextDirectionHeuristic;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public build()LK/h;
    .locals 5

    .line 1
    new-instance v0, LK/h;

    .line 2
    .line 3
    iget-object v1, p0, LK/g;->b:Landroid/text/TextDirectionHeuristic;

    .line 4
    .line 5
    iget v2, p0, LK/g;->c:I

    .line 6
    .line 7
    iget v3, p0, LK/g;->d:I

    .line 8
    .line 9
    iget-object v4, p0, LK/g;->a:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-direct {v0, v4, v1, v2, v3}, LK/h;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public setBreakStrategy(I)LK/g;
    .locals 0

    .line 1
    iput p1, p0, LK/g;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setHyphenationFrequency(I)LK/g;
    .locals 0

    .line 1
    iput p1, p0, LK/g;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)LK/g;
    .locals 0

    .line 1
    iput-object p1, p0, LK/g;->b:Landroid/text/TextDirectionHeuristic;

    .line 2
    .line 3
    return-object p0
.end method
