<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-500">

    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto">${error}</h3>
        <form method="post" action="/">

            <div class="grid grid-cols-2 gap-4 my-5 mx-8">
                <label for="principalAmount" class="text-xl flex items-center">Principal Amount: <span class="text-gray-500 mx-1">$</span></label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="principalAmount" name="principalAmount" value="${principal}">

                <label for="interestRate" class="text-xl flex items-center">Interest Rate:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="interestRate" name="interestRate" min="1" max="100" value="${interest}">

                <label for="years" class="text-xl flex items-center" ># of Years:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="years" name="years" min="1" value="${years}">

                <label for="timesCompounded" class="text-xl flex items-center" >Times Compounded per Year:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="timesCompounded" name="timesCompounded" min="1" max="12" value="${compounded}">

            </div>

            <button class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-800 hover:text-white" type="submit">Calculate</button>
            <p class="text-3xl font-mono text-green-600">Result: ${result}</p>

        </form>
    </div>

</body>
</html>