# تمپلیت LaTeX فارسی برای تمرین‌ها

این مخزن شامل برخی موارد مفید  LaTeX شامل استایل‌ها، فونت‌ها و تنظیمات است که به شما کمک می‌کند تا اسناد LaTeX زیبا و منسجمی ایجاد کنید.

این مجموعه موارد با XeLaTeX و بستهٔ TexLive (لتک لوکال روی سیستم شما) کار می‌کند.  به دلیل استفاده از پکیج `minted`، امکان استفاده از این تمپلیت روی ابزارهای TeX آنلاین (مانند شریف‌لاتک، Overleaf و ...) وجود ندارد؛ مگر این‌که بخش مربوط به `minted` رو خودتان به‌صورت دستی با موارد مشابه در پکیج `listings` جایگزین کنید.

*پی‌نوشت: پکیج‌های `minted` و `listings` برای آوردن یک قطعه کد درون سند متنی و Syntax Highlight خودکار آن‌ها استفاده می‌شوند.*

## محتویات

- فونت‌های فارسی؛
	- **`Aldhabi`**
	- **`Anjoman`** (+Black +Medium +Thin)
	- **`Dana`** (+Black +Medium +Light)
	- **`DigiRavi`**
	- **`Estedad`** (+Black +Medium +Light)
	- **HMXKayhan (`Kayhan`)**
	- **`IranNastaliq`**
	- **IranSansX** (`IranSans`) (+Black +Medium +Light)
	- **`IranYekan`** (+Black +Medium)
	- **IRNazanin** (`Nazanin`)
	- **`Kalameh`** (+Black)
	- **`Lalezar`**
	- **`Mikhak`** (+Black +Medium +Light)
	- **Noto Nastaliq (`NotoNastaliq`)**
	- **Parastoo Print (`Parastoo`)**
	- **`Peyda`** (+Black +Light)
	- **`Ray`** (+Black +Medium +Light)
	- **`Sahel`** (+Black +Medium +Light)
	- **Sharif 1.2 (`Sharif`)** (+Black +Semibold +Medium +Light)
	- **`Vazirmatn`** (+Black +Medium)
	- **XB Niloofar (`Niloofar`)**
	- **XB Zar (`Zar`)**
- فونت‌های لاتین؛
	- **`ComicSansMS`**
	- **`LiberationSerif`**
	- **`LinLibertine`**
	- **`SegoeUI`**
	- **`TimesNewRoman`**
- فونت‌های مونو؛
	- **`CodeNewRoman`**
	- **`ComicShannsMono`**
	- **Recursive Mono Casual (`RecursiveMono`)**
	- **`RobotoMono`**
	- **`SpaceMono`**

- `fonts.sty`: شامل تعریف و تنظیمات فونت‌های فارسی و لاتین.

- `styles.sty`: شامل تنظیمات مختلف استایل برای اسناد LaTeX.

- `sample/`: یک سند نمونه LaTeX که استفاده از ابزارها را نشان می‌دهد.

---

## دستورات و نحوهٔ استفاده

### دستورات مربوط به فونت‌ها

برای استفاده از فونت‌های مختلف در سند LaTeX خود، می‌توانید از دستورات زیر استفاده کنید:

برای استفاده برای یک بخش خاص:
(با فرض اینکه نام فونت `Font` باشد)
```tex
{\fontFont{Your Text with the desired font}}
```

#### **برای تنظیم به‌عنوان فونت پیش‌فرض :**

- **فارسی:**
	```tex
	\fontFontAsDefault
	```

- **لاتین:**
	```tex
	\fontFontAsLatin
	```

- **مونو:**
	```tex
	\fontFontAsMono
	```


#### **برای استفاده از وزن‌های مختلف فونت‌ها (در صورت موجود بودن)، می‌توانید از دستورات زیر استفاده کنید:**
- **Light**:
	```tex
	\textlt{متن با فونت Light}
	```
- **Medium**:
	```tex
	\textmi{متن با فونت Medium}
	```
- **Black**:
	```tex
	\textbk{متن با فونت Black}
	```

 ---

### دستورات مربوط به استایل‌ها

برای استفاده از استایل‌های مختلف در سند LaTeX خود، می‌توانید از دستورات زیر استفاده کنید:

- **اضافه کردن حاشیه به صفحه**:
	```tex
	\addborder{red}{1pt}{blue}{0.5pt}
	```

- **درج لینک در سند**:
	```tex
	\link{https://example.com}{متن لینک}
	```

- **ایجاد متن با حاشیه**:
	```tex
	\mkoutline{red}{blue}{1pt}{متن}
	```

- **ایجاد متن با سایه**:
	```tex
	\mkshadowtxt{0.1}{-0.1}{1.2}{متن}
	```

- **پیکربندی سرصفحه**:
	```tex
	\configHeader{red}{عنوان چپ}{عنوان راست}
	```

- **ایجاد صفحه جلد**:
	```tex
	\coverpageahmz{عنوان}{تاریخ}{درس}{استاد}{نیم‌سال}{نام دانشجو}{تصویر}
	```

- **ایجاد بلوک کد با `minted`**:
	```tex
	\codeblockfile{python}{example.py}{style=monokai}{gray}{black}{عنوان}
	```

این دستورات به شما کمک می‌کنند تا اسناد LaTeX خود را با استفاده از فونت‌ها و استایل‌های مختلف سفارشی کنید.

---

## نصب

ابتدا باید مطمئن شوید که پکیج‌های TexLive به‌درستی روی سیستم شما نصب شده باشند.

سپس اطمینان حاصل کنید که پکیج `pygments` در محیط پایتونی شما نصب باشد. برای این‌کار می‌توانید از دستور
```bash
pip install pygments
```
استفاده کنید. (این مورد توسط پکیج `minted` استفاده خواهد شد.)

برای استفاده از تمپلیت ارائه شده، می‌توانید از اسکریپت نصب ارائه شده استفاده کنید. این اسکریپت فایل‌ها را روی سیستم شما در مسیر `~/latex_utils` نصب کرده و فرمان `create-latex` را برای ایجاد پروژه‌های جدید LaTeX ثبت می‌کند.


---

## ساخت پروژه و کامپایل

پس از نصب ابزارها، می‌توانید با استفاده از فرمان `create-latex` یک پروژه جدید LaTeX ایجاد کنید. این فرمان فایل `main.tex` را از پوشه `sample` کپی کرده و یک لینک نمادین به پوشه `utils` در پروژه جدید ایجاد می‌کند.

### ایجاد پروژه جدید

1. یک پروژه جدید LaTeX ایجاد کنید:
    ```sh
    create-latex <project-name>
    ```

2. به پوشه پروژه جدید بروید:
    ```sh
    cd <project-name>
    ```


### **کامپایل**

**توجه کنید که با توجه به اینکه در این تمپلیت‌ها از پکیج `minted` استفاده شده است، امکان کامپایل عادی وجود ندارد و باید فلگ `-shell-scape` را به فلگ‌های کامپایل اضافه کنید. به‌طور خلاصه می‌توان با دستور زیر سند را کامپایل کرد:**

```sh
latexmk -xelatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main.tex
```

---

## سفارشی‌سازی

برای سفارشی‌سازی می‌توانید از روی samaple ارائه شده متوجه شوید که چه مواردی را می‌توان سفارشی‌سازی کرد. همچنین در صورت تمایل می‌توانید در این پروژه مشارکت کنید و همه را از تمپلیت‌های زیبای خود بهره‌مند کنید!

## مثال

مثال در samples می‌توانید مشاهده کنید
این بخش به زودی کامل‌تر خواهد شد.
