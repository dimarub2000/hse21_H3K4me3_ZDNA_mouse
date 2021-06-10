# Project hse21_H3K4me3_ZDNA_mouse

Bioinformatics minor project. Epigenetics, histone modifications.

Genome version - mm10

GenomeBrowser session: http://genome.ucsc.edu/s/DSRub/hse21_H3K4me3_ZDNA_mouse

# Результаты
## Анализ пиков гистоновой метки
### Распределение длин участков
#### ENCFF825RVT
Перед фильтрацией
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/filter_peaks.H3K4me3_MEL.ENCFF825RVT.mm10.init.hist.pdf.png-1.png)

После фильтрации по прогу 4500
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/filter_peaks.H3K4me3_MEL.ENCFF825RVT.mm10.filtered.hist.pdf.png-1.png)

### ENCFF176QEY
Перед фильтрацией
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/filter_peaks.H3K4me3_MEL.ENCFF176QEY.mm10.init.hist.pdf.png-1.png)

После фильтрации по прогу 4500
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/filter_peaks.H3K4me3_MEL.ENCFF176QEY.mm10.filtered.hist.pdf.png-1.png)

### Расположение пиков относительно аннотированных генов
#### ENCFF825RVT
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/chip_seeker.H3K4me3_MEL.ENCFF825RVT.mm10.filtered.plotAnnoPie.pdf.png-1.png)

#### ENCFF176QEY
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/chip_seeker.H3K4me3_MEL.ENCFF176QEY.mm10.filtered.plotAnnoPie.pdf.png-1.png)

## Анализ вторичной структуры ДНК (ZDNA_mouse_1)
### Распределение длин участков
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/len_hist.mouseZ-DNA1.pdf.png-1.png)

### Расположение пиков относительно аннотированных генов
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/chip_seeker.mouseZ-DNA1.plotAnnoPie.pdf.png-1.png)

## Анализ пересечения гистоновой метки и структуры ДНК
### Распределение длин участков
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/len_hist.H3K4me3_MEL.intersect_with_mouseZ-DNA1.pdf.png-1.png)

### Расположение пиков относительно аннотированных генов
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/chip_seeker.H3K4me3_MEL.intersect_with_mouseZ-DNA1.plotAnnoPie.pdf.png-1.png)

### Визуализация исходных участков ДНК и пересечения с гистоновой меткой
Пересечение с Map7 chr10:20,148,578-20,149,072
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/intersect_Map7.png)

Пересечение с Gid4 chr11:60,417,294-60,417,680
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/intersect_Gid4.png)

### Ассоциация пересечений с генами
Количество пиков, которые удалось проассоциировать: 644

Количество уникальных генов: 527

### GO анализ

Общая информация

![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/pantherdb_GO_analysis_results.png)

Наиболее важные категории
![alt text](https://github.com/dimarub2000/hse21_H3K4me3_ZDNA_mouse/blob/main/images2png/pantherdb_GO_analysis_top.png)

## Использованные команды
 wget [link] – скачивание файлов

 zcat [file] | cut -f1-5 > [file] - обрезаниие первых пяти столбцов в архииве

 liftOver [oldFile][map.chain][newFile][unMapped] - конвертация координат

 git clone [link] - скачивание репозитория с гитхаба

 git pull - pull-request

 git add . - добавление файла на сервер

 git commit -m 'messgae' - commit с собщением

 git push

 cat *.filtered.bed | sort -k1,1 -k2,2n | bedtools merge > H3K4me3_H1.merge.hg19.bed - объединение файлов и их сортировка

 bedtoold intersect -a [file] -b [file] - пересечение генов
