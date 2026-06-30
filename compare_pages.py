from subprocess import Popen as new
from generate_book import * 

def open_pdf(song: Song, transposition: Transposition):
    song_path = get_full_path(f"{transposition.pdf_path}/{song.name}.pdf")
    cmd = f"evince {song_path}"
    return new(cmd, shell=True)

if __name__ == "__main__":
    for song in song_list:
        process_pdf_1 = open_pdf(song, transposition_list[0])
        process_pdf_2 = open_pdf(song, transposition_list[1])
        input("Press to continue")
        process_pdf_1.terminate()
        process_pdf_2.terminate()
        process_pdf_1.wait()
        process_pdf_2.wait()
