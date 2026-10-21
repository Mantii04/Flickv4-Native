.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# static fields
.field public static e:I

.field public static f:Ljava/lang/reflect/Field;

.field public static j:Ljava/lang/reflect/Field;

.field public static m:Ljava/lang/reflect/Field;


# instance fields
.field public b:Landroidx/activity/ComponentActivity;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    sget p1, Landroidx/activity/ImmLeaksCleaner;->e:I

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    :try_start_0
    sput v0, Landroidx/activity/ImmLeaksCleaner;->e:I

    .line 16
    .line 17
    const-string v0, "mServedView"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->j:Ljava/lang/reflect/Field;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "mNextServedView"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->m:Ljava/lang/reflect/Field;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "mH"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sput-object p1, Landroidx/activity/ImmLeaksCleaner;->f:Ljava/lang/reflect/Field;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    .line 49
    .line 50
    sput p2, Landroidx/activity/ImmLeaksCleaner;->e:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :catch_0
    :cond_1
    sget p1, Landroidx/activity/ImmLeaksCleaner;->e:I

    .line 53
    .line 54
    if-ne p1, p2, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->b:Landroidx/activity/ComponentActivity;

    .line 57
    .line 58
    const-string p2, "input_method"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .line 66
    :try_start_1
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->f:Ljava/lang/reflect/Field;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 72
    if-nez p2, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    monitor-enter p2

    .line 76
    :try_start_2
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->j:Ljava/lang/reflect/Field;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    :try_start_3
    monitor-exit p2

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :try_start_4
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->m:Ljava/lang/reflect/Field;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    .line 103
    .line 104
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_1
    :try_start_6
    monitor-exit p2

    .line 110
    goto :goto_1

    .line 111
    :catch_2
    monitor-exit p2

    .line 112
    goto :goto_1

    .line 113
    :catch_3
    monitor-exit p2

    .line 114
    goto :goto_1

    .line 115
    :goto_0
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    throw p1

    .line 117
    :catch_4
    :cond_5
    :goto_1
    return-void
.end method
