<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.css" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.js"></script>
  <script src="https://unpkg.com/gridjs/dist/gridjs.production.min.js"></script>
  <link href="https://unpkg.com/gridjs/dist/theme/mermaid.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script>
    // On page load or when changing themes, best to add inline in `head` to avoid FOUC
    if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
        document.documentElement.classList.add('dark');
    } else {
        document.documentElement.classList.remove('dark')
    }
    </script>
    {{-- ICON --}}
    <link rel="shortcut icon" href="{{ ('logo.png') }}">
</head>

<body class="px-2">
    <br>
    <h1 class="font-bold text-4xl text-center dark:text-gray-800 shadow-inner text-red-500">MY SKINCARE PRODUCT
        <div>
            <button id="theme-toggle" type="button" class="text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5">
                <svg id="theme-toggle-dark-icon" class="hidden w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"></path></svg>
                <svg id="theme-toggle-light-icon" class="hidden w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z" fill-rule="evenodd" clip-rule="evenodd"></path></svg>
            </button>
        </div>
    </h1>
    {{-- tampilan produk --}}
    <div class="px-8 relative overflow-x-auto rounded-lg shadow-2xl sm:rounded-lg">
            <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-md text-gray-700 uppercase bg-red-200 dark:bg-gray-700 dark:text-gray-400">
                <tr class="text-center">
                    <th scope="col" class="px-6 py-3">No</th>
                    <th scope="col" class="px-6 py-3">Name</th>
                    <th scope="col" class="px-16 py-3">Description</th>
                    <th scope="col" class="px-2 py-3">Price</th>
                    <th scope="col" class="px-2 py-3">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($items as $index => $item)
                <tr class="odd:bg-red-100 odd:dark:bg-gray-900 even:bg-red-200 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th scope="row" class="px-3 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white text-center">
                        {{ $items->firstItem() + $index }}
                    </th>
                    <td class="px-3 py-4">{{ $item->nama }}</td>
                    <td class="px-3 py-4">{{ $item->deskripsi }}</td>
                    <td class="px-3 py-4">Rp.{{ $item->harga }}</td>
                    <td>
                        <form action="{{ route('produk.delete', $item->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" onclick="return confirm('Are you sure you want to delete {{ $item }}?')" class="text-gray-900 bg-gradient-to-r from-red-200 via-red-300 to-yellow-200 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-red-100 dark:focus:ring-red-400 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        
        <br>
        {{-- menemapilkan paginationnya --}}
        <div class="flex justify-between">
            <div class="text-sm">Showing {{ $items->firstItem() }} to {{ $items->lastItem() }} of {{ $items->total() }} entries</div>
            <div class="hidden"></div>
            <div class="text-sm ">{{ $items->links() }}</div>
        </div>
    </div>
    {{-- form input produk --}}
        <div class="flex justify-center items-center min-h-screen">
    <div class="card p-4 m-4 justify-center rounded-sm border shadow-lg group relative transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-red-300 hover:rounded-md duration-200 bg-gradient-to-r w-full max-w-lg dark:border-8 dark:shadow-xl dark:rounded-xl dark:bg-gray-800 border-b dark:border-gray-700"> 
        <div class="aspect-[4/3] w-full overflow-hidden rounded-md bg-red-50 lg:aspect-none group-hover:opacity-75 lg:h-54 dark:bg-gray-700 dark:border-gray-900">
            <h1 class="text-center font-bold text-lg mb-4 dark:text-white hover:text-red-600 hover-bg-sky-600">Input Produk Disini!</h1>
            <div class="">
                <form method="POST" action="{{ route('produk.simpan') }}" class="max-w-md mx-auto py-8  border-b dark:border-gray-700">
                    @csrf
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="nama" id="nama" class="form-control block py-2.5 px-3 w-full text-sm text-gray-900 bg-transparent border rounded-lg appearance-none dark:text-white dark:border-gray-600 dark:focus:border-grey-50 focus:outline-none focus:ring-0 focus:border-grey-50 peer" placeholder="" required />
                        <label for="nama" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform translate-y-10 scale-75 top-2 left-3 origin-[0] peer-focus:left-3 peer-focus:text-blue-600 peer-focus:dark:text-grey-50 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Nama</label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <textarea type="text" name="deskripsi" id="deskripsi" class="form-control block py-8 px-3 w-full text-sm text-gray-900 bg-transparent border rounded-lg appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" placeholder=" " required /></textarea>
                        <label for="deskripsi" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform translate-y-20 scale-75 top-2 left-3 origin-[0] peer-focus:left-3 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Deskripsi</label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="number" name="harga" id="harga" class="form-control block py-2.5 px-3 w-full text-sm text-gray-900 bg-transparent border rounded-lg appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" placeholder=" " required />
                        <label for="harga" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-10 scale-75 top-2 left-3 origin-[0] peer-focus:left-3 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Harga</label>
                    </div>  
                    <div class="flex justify-center">
                        <button type="submit" class="text-white bg-gradient-to-r from-red-200 via-red-300 to-yellow-200 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-red-100 dark:focus:ring-red-400 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Submit</button>
                    </div>
                </div>
                </form>
        </div>
    </div>
        </div>
    <br>

    <script>
        var themeToggleDarkIcon = document.getElementById("theme-toggle-dark-icon");
        var themeToggleLightIcon = document.getElementById("theme-toggle-light-icon");
        
        // Change the icons inside the button based on previous settings
        if (
            localStorage.getItem("color-theme") === "dark" ||
            (!("color-theme" in localStorage) &&
            window.matchMedia("(prefers-color-scheme: dark)").matches)
        ) {
            themeToggleLightIcon.classList.remove("hidden");
        } else {
            themeToggleDarkIcon.classList.remove("hidden");
        }
        
        var themeToggleBtn = document.getElementById("theme-toggle");
        
        themeToggleBtn.addEventListener("click", function () {
            // toggle icons inside button
            themeToggleDarkIcon.classList.toggle("hidden");
            themeToggleLightIcon.classList.toggle("hidden");
            
            // if set via local storage previously
            if (localStorage.getItem("color-theme")) {
                if (localStorage.getItem("color-theme") === "light") {
                    document.documentElement.classList.add("dark");
                    localStorage.setItem("color-theme", "dark");
                } else {
                    document.documentElement.classList.remove("dark");
                    localStorage.setItem("color-theme", "light");
                }
                
                // if NOT set via local storage previously
            } else {
                if (document.documentElement.classList.contains("dark")) {
                    document.documentElement.classList.remove("dark");
                    localStorage.setItem("color-theme", "light");
                } else {
                    document.documentElement.classList.add("dark");
                    localStorage.setItem("color-theme", "dark");
                }
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
