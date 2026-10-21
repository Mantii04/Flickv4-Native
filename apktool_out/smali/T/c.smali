.class public abstract LT/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public b:Z

.field public final e:Z

.field public f:Landroid/database/Cursor;

.field public final j:Landroid/content/Context;

.field public m:I

.field public final n:LT/a;

.field public final p:LT/b;

.field public q:LT/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    move p3, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p3, v0

    .line 11
    :goto_0
    and-int/lit8 v2, p3, 0x1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v2, v1, :cond_1

    .line 15
    .line 16
    or-int/lit8 p3, p3, 0x2

    .line 17
    .line 18
    iput-boolean v1, p0, LT/c;->e:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-boolean v3, p0, LT/c;->e:Z

    .line 22
    .line 23
    :goto_1
    if-eqz p2, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v1, v3

    .line 27
    :goto_2
    iput-object p2, p0, LT/c;->f:Landroid/database/Cursor;

    .line 28
    .line 29
    iput-boolean v1, p0, LT/c;->b:Z

    .line 30
    .line 31
    iput-object p1, p0, LT/c;->j:Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string p1, "_id"

    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    const/4 p1, -0x1

    .line 43
    :goto_3
    iput p1, p0, LT/c;->m:I

    .line 44
    .line 45
    and-int/lit8 p1, p3, 0x2

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    new-instance p1, LT/a;

    .line 50
    .line 51
    invoke-direct {p1, p0}, LT/a;-><init>(LT/c;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, LT/c;->n:LT/a;

    .line 55
    .line 56
    new-instance p1, LT/b;

    .line 57
    .line 58
    invoke-direct {p1, p0}, LT/b;-><init>(LT/c;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, LT/c;->p:LT/b;

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, LT/c;->n:LT/a;

    .line 66
    .line 67
    iput-object p1, p0, LT/c;->p:LT/b;

    .line 68
    .line 69
    :goto_4
    if-eqz v1, :cond_6

    .line 70
    .line 71
    iget-object p1, p0, LT/c;->n:LT/a;

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    iget-object p1, p0, LT/c;->p:LT/b;

    .line 79
    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LT/c;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public abstract convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, LT/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, LT/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, LT/c;->j:Landroid/content/Context;

    .line 13
    .line 14
    iget-object p2, p0, LT/c;->f:Landroid/database/Cursor;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, LT/c;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    iget-object p1, p0, LT/c;->j:Landroid/content/Context;

    .line 21
    .line 22
    iget-object p3, p0, LT/c;->f:Landroid/database/Cursor;

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1, p3}, LT/c;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, LT/c;->q:LT/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LT/d;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/widget/Filter;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, v0, LT/d;->a:LT/c;

    .line 11
    .line 12
    iput-object v0, p0, LT/c;->q:LT/d;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, LT/c;->q:LT/d;

    .line 15
    .line 16
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, LT/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LT/c;->f:Landroid/database/Cursor;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, LT/c;->b:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, LT/c;->f:Landroid/database/Cursor;

    .line 18
    .line 19
    iget v0, p0, LT/c;->m:I

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_0
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, LT/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, LT/c;->j:Landroid/content/Context;

    .line 16
    .line 17
    iget-object p2, p0, LT/c;->f:Landroid/database/Cursor;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3}, LT/c;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    iget-object p1, p0, LT/c;->j:Landroid/content/Context;

    .line 24
    .line 25
    iget-object p3, p0, LT/c;->f:Landroid/database/Cursor;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1, p3}, LT/c;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p3, "couldn\'t move cursor to position "

    .line 34
    .line 35
    invoke-static {p1, p3}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "this should only be called when the cursor is valid"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public abstract newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LT/c;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, LT/c;->b:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, LT/c;->f:Landroid/database/Cursor;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, LT/c;->n:LT/a;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, LT/c;->p:LT/b;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iput-object p1, p0, LT/c;->f:Landroid/database/Cursor;

    .line 24
    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    iget-object v1, p0, LT/c;->n:LT/a;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v1, p0, LT/c;->p:LT/b;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    .line 40
    .line 41
    :cond_4
    const-string v1, "_id"

    .line 42
    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, LT/c;->m:I

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, LT/c;->b:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_5
    const/4 p1, -0x1

    .line 57
    iput p1, p0, LT/c;->m:I

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, LT/c;->b:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
