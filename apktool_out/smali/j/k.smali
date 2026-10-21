.class public final Lj/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lj/l;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:LM/e;


# direct methods
.method public constructor <init>(Lj/l;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/k;->E:Lj/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lj/k;->C:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Lj/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Lj/k;->a:Landroid/view/Menu;

    .line 12
    .line 13
    invoke-virtual {p0}, Lj/k;->resetGroup()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/k;->E:Lj/l;

    .line 2
    .line 3
    iget-object v0, v0, Lj/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Cannot instantiate class: "

    .line 31
    .line 32
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p3, "SupportMenuInflater"

    .line 43
    .line 44
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public addItem()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/k;->h:Z

    .line 3
    .line 4
    iget v0, p0, Lj/k;->b:I

    .line 5
    .line 6
    iget v1, p0, Lj/k;->i:I

    .line 7
    .line 8
    iget v2, p0, Lj/k;->j:I

    .line 9
    .line 10
    iget-object v3, p0, Lj/k;->k:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v4, p0, Lj/k;->a:Landroid/view/Menu;

    .line 13
    .line 14
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lj/k;->b(Landroid/view/MenuItem;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/k;->h:Z

    .line 3
    .line 4
    iget v0, p0, Lj/k;->b:I

    .line 5
    .line 6
    iget v1, p0, Lj/k;->i:I

    .line 7
    .line 8
    iget v2, p0, Lj/k;->j:I

    .line 9
    .line 10
    iget-object v3, p0, Lj/k;->k:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v4, p0, Lj/k;->a:Landroid/view/Menu;

    .line 13
    .line 14
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lj/k;->b(Landroid/view/MenuItem;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/k;->s:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lj/k;->t:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lj/k;->u:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lj/k;->r:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lj/k;->l:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lj/k;->m:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lj/k;->v:I

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lj/k;->y:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Lj/k;->E:Lj/l;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v1, Lj/l;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Lj/j;

    .line 65
    .line 66
    iget-object v4, v1, Lj/l;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v4, v1, Lj/l;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v4}, Lj/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, v1, Lj/l;->d:Ljava/lang/Object;

    .line 77
    .line 78
    :cond_2
    iget-object v4, v1, Lj/l;->d:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v5, p0, Lj/k;->y:Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v0, v4, v5}, Lj/j;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    :goto_1
    iget v0, p0, Lj/k;->r:I

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    if-lt v0, v4, :cond_6

    .line 101
    .line 102
    instance-of v0, p1, Lk/s;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Lk/s;

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Lk/s;->setExclusiveCheckable(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    instance-of v0, p1, Lk/y;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    move-object v0, p1

    .line 118
    check-cast v0, Lk/y;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lk/y;->setExclusiveCheckable(Z)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_2
    iget-object v0, p0, Lj/k;->x:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    sget-object v2, Lj/l;->e:[Ljava/lang/Class;

    .line 128
    .line 129
    iget-object v1, v1, Lj/l;->a:[Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {p0, v0, v2, v1}, Lj/k;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/view/View;

    .line 136
    .line 137
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    move v2, v3

    .line 141
    :cond_7
    iget v0, p0, Lj/k;->w:I

    .line 142
    .line 143
    if-lez v0, :cond_9

    .line 144
    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    const-string v0, "SupportMenuInflater"

    .line 152
    .line 153
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 154
    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_3
    iget-object v0, p0, Lj/k;->z:LM/e;

    .line 159
    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    invoke-static {p1, v0}, LM/D;->setActionProvider(Landroid/view/MenuItem;LM/e;)Landroid/view/MenuItem;

    .line 163
    .line 164
    .line 165
    :cond_a
    iget-object v0, p0, Lj/k;->A:Ljava/lang/CharSequence;

    .line 166
    .line 167
    invoke-static {p1, v0}, LM/D;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lj/k;->B:Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-static {p1, v0}, LM/D;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-char v0, p0, Lj/k;->n:C

    .line 176
    .line 177
    iget v1, p0, Lj/k;->o:I

    .line 178
    .line 179
    invoke-static {p1, v0, v1}, LM/D;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 180
    .line 181
    .line 182
    iget-char v0, p0, Lj/k;->p:C

    .line 183
    .line 184
    iget v1, p0, Lj/k;->q:I

    .line 185
    .line 186
    invoke-static {p1, v0, v1}, LM/D;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lj/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 190
    .line 191
    if-eqz v0, :cond_b

    .line 192
    .line 193
    invoke-static {p1, v0}, LM/D;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 194
    .line 195
    .line 196
    :cond_b
    iget-object v0, p0, Lj/k;->C:Landroid/content/res/ColorStateList;

    .line 197
    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    invoke-static {p1, v0}, LM/D;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 201
    .line 202
    .line 203
    :cond_c
    return-void
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/k;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/k;->E:Lj/l;

    .line 2
    .line 3
    iget-object v0, v0, Lj/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lj/k;->b:I

    .line 19
    .line 20
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lj/k;->c:I

    .line 27
    .line 28
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lj/k;->d:I

    .line 35
    .line 36
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lj/k;->e:I

    .line 43
    .line 44
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Lj/k;->f:Z

    .line 52
    .line 53
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lj/k;->g:Z

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lj/k;->E:Lj/l;

    .line 2
    .line 3
    iget-object v1, v0, Lj/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v2, Landroidx/appcompat/R$styleable;->MenuItem:[I

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ll/e2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v2}, Ll/e2;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lj/k;->i:I

    .line 19
    .line 20
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    .line 21
    .line 22
    iget v3, p0, Lj/k;->c:I

    .line 23
    .line 24
    invoke-virtual {p1, v1, v3}, Ll/e2;->getInt(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget v3, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    .line 29
    .line 30
    iget v4, p0, Lj/k;->d:I

    .line 31
    .line 32
    invoke-virtual {p1, v3, v4}, Ll/e2;->getInt(II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/high16 v4, -0x10000

    .line 37
    .line 38
    and-int/2addr v1, v4

    .line 39
    const v4, 0xffff

    .line 40
    .line 41
    .line 42
    and-int/2addr v3, v4

    .line 43
    or-int/2addr v1, v3

    .line 44
    iput v1, p0, Lj/k;->j:I

    .line 45
    .line 46
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ll/e2;->getText(I)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lj/k;->k:Ljava/lang/CharSequence;

    .line 53
    .line 54
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ll/e2;->getText(I)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lj/k;->l:Ljava/lang/CharSequence;

    .line 61
    .line 62
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Ll/e2;->getResourceId(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, p0, Lj/k;->m:I

    .line 69
    .line 70
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_0
    iput-char v1, p0, Lj/k;->n:C

    .line 85
    .line 86
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    .line 87
    .line 88
    const/16 v3, 0x1000

    .line 89
    .line 90
    invoke-virtual {p1, v1, v3}, Ll/e2;->getInt(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lj/k;->o:I

    .line 95
    .line 96
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_1

    .line 103
    .line 104
    move v1, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_1
    iput-char v1, p0, Lj/k;->p:C

    .line 111
    .line 112
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 113
    .line 114
    invoke-virtual {p1, v1, v3}, Ll/e2;->getInt(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iput v1, p0, Lj/k;->q:I

    .line 119
    .line 120
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Ll/e2;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    .line 129
    .line 130
    invoke-virtual {p1, v1, v2}, Ll/e2;->getBoolean(IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iput v1, p0, Lj/k;->r:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    iget v1, p0, Lj/k;->e:I

    .line 138
    .line 139
    iput v1, p0, Lj/k;->r:I

    .line 140
    .line 141
    :goto_2
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    .line 142
    .line 143
    invoke-virtual {p1, v1, v2}, Ll/e2;->getBoolean(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iput-boolean v1, p0, Lj/k;->s:Z

    .line 148
    .line 149
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    .line 150
    .line 151
    iget-boolean v3, p0, Lj/k;->f:Z

    .line 152
    .line 153
    invoke-virtual {p1, v1, v3}, Ll/e2;->getBoolean(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput-boolean v1, p0, Lj/k;->t:Z

    .line 158
    .line 159
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    .line 160
    .line 161
    iget-boolean v3, p0, Lj/k;->g:Z

    .line 162
    .line 163
    invoke-virtual {p1, v1, v3}, Ll/e2;->getBoolean(IZ)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput-boolean v1, p0, Lj/k;->u:Z

    .line 168
    .line 169
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    .line 170
    .line 171
    const/4 v3, -0x1

    .line 172
    invoke-virtual {p1, v1, v3}, Ll/e2;->getInt(II)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iput v1, p0, Lj/k;->v:I

    .line 177
    .line 178
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iput-object v1, p0, Lj/k;->y:Ljava/lang/String;

    .line 185
    .line 186
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    .line 187
    .line 188
    invoke-virtual {p1, v1, v2}, Ll/e2;->getResourceId(II)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, p0, Lj/k;->w:I

    .line 193
    .line 194
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iput-object v1, p0, Lj/k;->x:Ljava/lang/String;

    .line 201
    .line 202
    sget v1, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_3

    .line 209
    .line 210
    const/4 v4, 0x1

    .line 211
    goto :goto_3

    .line 212
    :cond_3
    move v4, v2

    .line 213
    :goto_3
    const/4 v5, 0x0

    .line 214
    if-eqz v4, :cond_4

    .line 215
    .line 216
    iget v6, p0, Lj/k;->w:I

    .line 217
    .line 218
    if-nez v6, :cond_4

    .line 219
    .line 220
    iget-object v6, p0, Lj/k;->x:Ljava/lang/String;

    .line 221
    .line 222
    if-nez v6, :cond_4

    .line 223
    .line 224
    sget-object v4, Lj/l;->f:[Ljava/lang/Class;

    .line 225
    .line 226
    iget-object v0, v0, Lj/l;->b:[Ljava/lang/Object;

    .line 227
    .line 228
    invoke-virtual {p0, v1, v4, v0}, Lj/k;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, LM/e;

    .line 233
    .line 234
    iput-object v0, p0, Lj/k;->z:LM/e;

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_4
    if-eqz v4, :cond_5

    .line 238
    .line 239
    const-string v0, "SupportMenuInflater"

    .line 240
    .line 241
    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 242
    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :cond_5
    iput-object v5, p0, Lj/k;->z:LM/e;

    .line 247
    .line 248
    :goto_4
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ll/e2;->getText(I)Ljava/lang/CharSequence;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, p0, Lj/k;->A:Ljava/lang/CharSequence;

    .line 255
    .line 256
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Ll/e2;->getText(I)Ljava/lang/CharSequence;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iput-object v0, p0, Lj/k;->B:Ljava/lang/CharSequence;

    .line 263
    .line 264
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Ll/e2;->hasValue(I)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_6

    .line 271
    .line 272
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    .line 273
    .line 274
    invoke-virtual {p1, v0, v3}, Ll/e2;->getInt(II)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    iget-object v1, p0, Lj/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 279
    .line 280
    invoke-static {v0, v1}, Ll/P0;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iput-object v0, p0, Lj/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_6
    iput-object v5, p0, Lj/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 288
    .line 289
    :goto_5
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ll/e2;->hasValue(I)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ll/e2;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, p0, Lj/k;->C:Landroid/content/res/ColorStateList;

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_7
    iput-object v5, p0, Lj/k;->C:Landroid/content/res/ColorStateList;

    .line 307
    .line 308
    :goto_6
    invoke-virtual {p1}, Ll/e2;->recycle()V

    .line 309
    .line 310
    .line 311
    iput-boolean v2, p0, Lj/k;->h:Z

    .line 312
    .line 313
    return-void
.end method

.method public resetGroup()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj/k;->b:I

    .line 3
    .line 4
    iput v0, p0, Lj/k;->c:I

    .line 5
    .line 6
    iput v0, p0, Lj/k;->d:I

    .line 7
    .line 8
    iput v0, p0, Lj/k;->e:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lj/k;->f:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lj/k;->g:Z

    .line 14
    .line 15
    return-void
.end method
